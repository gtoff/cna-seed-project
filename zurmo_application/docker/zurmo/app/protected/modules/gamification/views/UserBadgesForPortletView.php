<?php
    /*********************************************************************************
     * Zurmo is a customer relationship management program developed by
     * Zurmo, Inc. Copyright (C) 2014 Zurmo Inc.
     *
     * Zurmo is free software; you can redistribute it and/or modify it under
     * the terms of the GNU Affero General Public License version 3 as published by the
     * Free Software Foundation with the addition of the following permission added
     * to Section 15 as permitted in Section 7(a): FOR ANY PART OF THE COVERED WORK
     * IN WHICH THE COPYRIGHT IS OWNED BY ZURMO, ZURMO DISCLAIMS THE WARRANTY
     * OF NON INFRINGEMENT OF THIRD PARTY RIGHTS.
     *
     * Zurmo is distributed in the hope that it will be useful, but WITHOUT
     * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
     * FOR A PARTICULAR PURPOSE.  See the GNU Affero General Public License for more
     * details.
     *
     * You should have received a copy of the GNU Affero General Public License along with
     * this program; if not, see http://www.gnu.org/licenses or write to the Free
     * Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA
     * 02110-1301 USA.
     *
     * You can contact Zurmo, Inc. with a mailing address at 27 North Wacker Drive
     * Suite 370 Chicago, IL 60606. or at email address contact@zurmo.com.
     *
     * The interactive user interfaces in original and modified versions
     * of this program must display Appropriate Legal Notices, as required under
     * Section 5 of the GNU Affero General Public License version 3.
     *
     * In accordance with Section 7(b) of the GNU Affero General Public License version 3,
     * these Appropriate Legal Notices must retain the display of the Zurmo
     * logo and Zurmo copyright notice. If the display of the logo is not reasonably
     * feasible for technical reasons, the Appropriate Legal Notices must display the words
     * "Copyright Zurmo Inc. 2014. All rights reserved".
     ********************************************************************************/

    /**
     * Class used to display the badges a given user has.
     */
    class UserBadgesForPortletView extends ConfigurableMetadataView  implements PortletViewInterface
    {
        /**
         * Portlet parameters passed in from the portlet.
         * @var array
         */
        protected $params;

        protected $controllerId;

        protected $moduleId;

        protected $model;

        protected $uniqueLayoutId;

        protected $viewData;

        /**
         * Some extra assertions are made to ensure this view is used in a way that it supports.
         * @param array $viewData
         * @param array $params
         * @param string $uniqueLayoutId
         */
        public function __construct($viewData, $params, $uniqueLayoutId)
        {
            assert('is_array($viewData) || $viewData == null');
            assert('isset($params["portletId"])');
            assert('isset($params["relationModuleId"])');
            assert('isset($params["relationModel"]) && $params["relationModel"] instanceof User');
            assert('isset($params["badgeData"])');
            assert('is_string($uniqueLayoutId)');
            $this->moduleId       = 'users';
            $this->viewData       = $viewData;
            $this->params         = $params;
            $this->uniqueLayoutId = $uniqueLayoutId;
        }

        public function getPortletParams()
        {
            return array();
        }

        public static function getDefaultMetadata()
        {
            $metadata = array(
                'perUser' => array(
                    'title' => "eval:Zurmo::t('GamificationModule', 'Achievements')",
                ),
            );
            return $metadata;
        }

        /**
         * Override to add a description for the view to be shown when adding a portlet
         */
        public static function getPortletDescription()
        {
        }

        public function getTitle()
        {
            $title  = Zurmo::t('GamificationModule', 'Achievements');
            return $title;
        }

        public function renderContent()
        {
            return $this->renderBadgeContent();
        }

        public function renderPortletHeadContent()
        {
            return null;
        }

        protected function renderBadgeContent()
        {
            $content = null;
            if (count($this->params['badgeData']) > 0)
            {
                foreach ($this->params['badgeData'] as $badge)
                {
                    $badgeRulesClassName = $badge->type . 'GameBadgeRules';
                    $tooltipSpanId       = 'user-badge-tooltip-' . $badge->type;
                    $value               = $badgeRulesClassName::getItemCountByGrade((int)$badge->grade);
                    //$content .= '<span id="' . $tooltipSpanId . '" class="tooltip"  title="' . $badgeRulesClassName::getPassiveDisplayLabel($value) . '">';
                    $content .= '<div class="badge ' . $badge->type . '"><div class="gloss"></div>' .
                                '<strong class="badge-icon" title="' . $badgeRulesClassName::getPassiveDisplayLabel($value) . '"></strong><span class="badge-grade">' . $badge->grade . '</span></div>';
                    //$content .= '</span>';
                    $zTip = new ZurmoTip(array('options' => array('position' => array('my' => 'bottom right', 'at' => 'top left'))));
                    //$zTip->addQTip("#" . $tooltipSpanId);
                }
                $zTip->addQTip(".badge-icon");
            }
            else
            {
                $content .= '<span class="empty">' . Zurmo::t('GamificationModule', 'No achievements earned.') . '</span>';
            }
            return $content;
        }

        public static function canUserConfigure()
        {
            return false;
        }

        /**
         * What kind of PortletRules this view follows
         * @return PortletRulesType as string.
         */
        public static function getPortletRulesType()
        {
            return 'MixedForDetails';
        }

        /**
         * The view's module class name.
         */
        public static function getModuleClassName()
        {
            return 'GamificationModule';
        }
    }
?>